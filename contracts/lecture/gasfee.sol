// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract GASFEE {
    uint a;
    uint b;
    uint c;

    function A() public {
        a = a + 1;
    }

    function B() public {
        b++;
    }

    function C() public {
        c += 1;
    }
}

contract GASFEE3 {
    uint aaaaa;
    uint bbbbb;
    uint ccccc;

    function A() public {
        aaaaa = aaaaa + 2; // 50055, 42526, 22462 / 30390, 26426, 5362 / 30390, 26426, 5362
    }

    function B() public {
        bbbbb++; // 50362, 43793, 22729 / 30697, 26693, 5629 / 30697, 26693, 5629
        bbbbb++;
    }

    function C() public {
        ccccc += 2; // 50046, 43518, 22454 / 30381, 26418, 5354 / 30381, 26418, 5354
    }
}

contract GASFEE4 {
    uint a = 1;
    uint b = 1;
    uint c = 1;

    function A() public {
        a = a + 1; // 30390, 26426, 5362 / 30390, 26426, 5362
    }

    function B() public {
        b++; // 30290, 26339, 5275 / 30290, 26339, 5275
    }

    function C() public {
        c += 1; // 30381, 26418, 5354 / 30381, 26418, 5354
    }
} // 236735, 205856, 146444

contract GASFEE5 {
    uint a;

    function A() public {
        a++; // 49981, 43461, 22397 / 30316, 26361, 5297 /
    }

    function deleteA() public {
        delete a; // 35639, 21390, 5126 /
    }
}

contract GASFEE6 {
    uint a = 0;
    uint b = 0;
    uint c = 0;

    function A() public {
        a = a + 1;
    }

    function B() public {
        a = a + 1;
    }

    function C() public {
        a = a + 1;
    }
} // 168055, 146134, 86742