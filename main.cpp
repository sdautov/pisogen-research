#include <windows.h>
#include <iostream>

typedef void (__stdcall *AliasTmStdcallFunc)(DWORD *, DWORD *, DWORD *, DWORD *, DWORD *);

typedef __time64_t (__stdcall *AliasTmFunc)();

int main() {
    const HMODULE hModule = LoadLibrary("pisogen.dll");
    if (!hModule) {
        std::cerr << "DLL not loaded." << std::endl;
        return 1;
    }

    const auto AliasTmStdcall = reinterpret_cast<AliasTmStdcallFunc>(GetProcAddress(hModule, "_AliasTmStdcall@20"));
    if (!AliasTmStdcall) {
        std::cerr << "Function _AliasTmStdcall@20() not found." << std::endl;
        FreeLibrary(hModule);
        return 1;
    }

    const auto AliasTm = reinterpret_cast<AliasTmFunc>(GetProcAddress(hModule, "AliasTm"));
    if (!AliasTm) {
        std::cerr << "Function AliasTm() not found." << std::endl;
        FreeLibrary(hModule);
        return 1;
    }

    DWORD day, month, year, hour, minute;
    AliasTmStdcall(&day, &month, &year, &hour, &minute);
    std::cout << "Day: " << day << std::endl;
    std::cout << "Month: " << month << std::endl;
    std::cout << "Year: " << year << std::endl;
    std::cout << "Hour: " << hour << std::endl;
    std::cout << "Minute: " << minute << std::endl;

    const auto time = AliasTm();
    std::cout << "AliasTm: " << time << std::endl;
    FreeLibrary(hModule);
    return 0;
}
