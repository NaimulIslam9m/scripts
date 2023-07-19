if __name__ == "__main__":
    ghidra_base = int("0x" + input("Enter Ghidra's base address: "), 16)
    gdb_base = int(input("Enter GDB's base  address: "), 16)

    while True:
        try:
            ghidra_cur = int("0x" + input("\nGhidra's address: "), 16)
            diff = ghidra_cur - ghidra_base
            gdb_cur = gdb_base + diff
            print(f"GDB's address: {hex(gdb_cur)}")
        except ValueError:
            print("Invalid input. Please enter valid hexadecimal values.")
            exit
