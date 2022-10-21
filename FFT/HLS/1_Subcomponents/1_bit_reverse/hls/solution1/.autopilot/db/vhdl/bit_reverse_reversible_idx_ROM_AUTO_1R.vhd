-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity bit_reverse_reversible_idx_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 10; 
             AddressWidth     : integer := 9; 
             AddressRange    : integer := 496
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of bit_reverse_reversible_idx_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000001", 1 => "0000000010", 2 => "0000000011", 3 => "0000000100", 
    4 => "0000000101", 5 => "0000000110", 6 => "0000000111", 7 => "0000001000", 
    8 => "0000001001", 9 => "0000001010", 10 => "0000001011", 11 => "0000001100", 
    12 => "0000001101", 13 => "0000001110", 14 => "0000001111", 15 => "0000010000", 
    16 => "0000010001", 17 => "0000010010", 18 => "0000010011", 19 => "0000010100", 
    20 => "0000010101", 21 => "0000010110", 22 => "0000010111", 23 => "0000011000", 
    24 => "0000011001", 25 => "0000011010", 26 => "0000011011", 27 => "0000011100", 
    28 => "0000011101", 29 => "0000011110", 30 => "0000011111", 31 => "0000100001", 
    32 => "0000100010", 33 => "0000100011", 34 => "0000100100", 35 => "0000100101", 
    36 => "0000100110", 37 => "0000100111", 38 => "0000101000", 39 => "0000101001", 
    40 => "0000101010", 41 => "0000101011", 42 => "0000101100", 43 => "0000101101", 
    44 => "0000101110", 45 => "0000101111", 46 => "0000110001", 47 => "0000110010", 
    48 => "0000110011", 49 => "0000110100", 50 => "0000110101", 51 => "0000110110", 
    52 => "0000110111", 53 => "0000111000", 54 => "0000111001", 55 => "0000111010", 
    56 => "0000111011", 57 => "0000111100", 58 => "0000111101", 59 => "0000111110", 
    60 => "0000111111", 61 => "0001000001", 62 => "0001000010", 63 => "0001000011", 
    64 => "0001000100", 65 => "0001000101", 66 => "0001000110", 67 => "0001000111", 
    68 => "0001001001", 69 => "0001001010", 70 => "0001001011", 71 => "0001001100", 
    72 => "0001001101", 73 => "0001001110", 74 => "0001001111", 75 => "0001010001", 
    76 => "0001010010", 77 => "0001010011", 78 => "0001010100", 79 => "0001010101", 
    80 => "0001010110", 81 => "0001010111", 82 => "0001011000", 83 => "0001011001", 
    84 => "0001011010", 85 => "0001011011", 86 => "0001011100", 87 => "0001011101", 
    88 => "0001011110", 89 => "0001011111", 90 => "0001100001", 91 => "0001100010", 
    92 => "0001100011", 93 => "0001100100", 94 => "0001100101", 95 => "0001100110", 
    96 => "0001100111", 97 => "0001101001", 98 => "0001101010", 99 => "0001101011", 
    100 => "0001101100", 101 => "0001101101", 102 => "0001101110", 103 => "0001101111", 
    104 => "0001110001", 105 => "0001110010", 106 => "0001110011", 107 => "0001110100", 
    108 => "0001110101", 109 => "0001110110", 110 => "0001110111", 111 => "0001111001", 
    112 => "0001111010", 113 => "0001111011", 114 => "0001111100", 115 => "0001111101", 
    116 => "0001111110", 117 => "0001111111", 118 => "0010000001", 119 => "0010000010", 
    120 => "0010000011", 121 => "0010000101", 122 => "0010000110", 123 => "0010000111", 
    124 => "0010001001", 125 => "0010001010", 126 => "0010001011", 127 => "0010001100", 
    128 => "0010001101", 129 => "0010001110", 130 => "0010001111", 131 => "0010010001", 
    132 => "0010010010", 133 => "0010010011", 134 => "0010010100", 135 => "0010010101", 
    136 => "0010010110", 137 => "0010010111", 138 => "0010011001", 139 => "0010011010", 
    140 => "0010011011", 141 => "0010011100", 142 => "0010011101", 143 => "0010011110", 
    144 => "0010011111", 145 => "0010100001", 146 => "0010100010", 147 => "0010100011", 
    148 => "0010100101", 149 => "0010100110", 150 => "0010100111", 151 => "0010101001", 
    152 => "0010101010", 153 => "0010101011", 154 => "0010101100", 155 => "0010101101", 
    156 => "0010101110", 157 => "0010101111", 158 => "0010110001", 159 => "0010110010", 
    160 => "0010110011", 161 => "0010110101", 162 => "0010110110", 163 => "0010110111", 
    164 => "0010111001", 165 => "0010111010", 166 => "0010111011", 167 => "0010111100", 
    168 => "0010111101", 169 => "0010111110", 170 => "0010111111", 171 => "0011000001", 
    172 => "0011000010", 173 => "0011000011", 174 => "0011000101", 175 => "0011000110", 
    176 => "0011000111", 177 => "0011001001", 178 => "0011001010", 179 => "0011001011", 
    180 => "0011001101", 181 => "0011001110", 182 => "0011001111", 183 => "0011010001", 
    184 => "0011010010", 185 => "0011010011", 186 => "0011010101", 187 => "0011010110", 
    188 => "0011010111", 189 => "0011011001", 190 => "0011011010", 191 => "0011011011", 
    192 => "0011011100", 193 => "0011011101", 194 => "0011011110", 195 => "0011011111", 
    196 => "0011100001", 197 => "0011100010", 198 => "0011100011", 199 => "0011100101", 
    200 => "0011100110", 201 => "0011100111", 202 => "0011101001", 203 => "0011101010", 
    204 => "0011101011", 205 => "0011101101", 206 => "0011101110", 207 => "0011101111", 
    208 => "0011110001", 209 => "0011110010", 210 => "0011110011", 211 => "0011110101", 
    212 => "0011110110", 213 => "0011110111", 214 => "0011111001", 215 => "0011111010", 
    216 => "0011111011", 217 => "0011111101", 218 => "0011111110", 219 => "0011111111", 
    220 => "0100000001", 221 => "0100000011", 222 => "0100000101", 223 => "0100000110", 
    224 => "0100000111", 225 => "0100001001", 226 => "0100001010", 227 => "0100001011", 
    228 => "0100001101", 229 => "0100001110", 230 => "0100001111", 231 => "0100010001", 
    232 => "0100010010", 233 => "0100010011", 234 => "0100010101", 235 => "0100010110", 
    236 => "0100010111", 237 => "0100011001", 238 => "0100011010", 239 => "0100011011", 
    240 => "0100011101", 241 => "0100011110", 242 => "0100011111", 243 => "0100100001", 
    244 => "0100100011", 245 => "0100100101", 246 => "0100100110", 247 => "0100100111", 
    248 => "0100101001", 249 => "0100101010", 250 => "0100101011", 251 => "0100101101", 
    252 => "0100101110", 253 => "0100101111", 254 => "0100110001", 255 => "0100110011", 
    256 => "0100110101", 257 => "0100110110", 258 => "0100110111", 259 => "0100111001", 
    260 => "0100111010", 261 => "0100111011", 262 => "0100111101", 263 => "0100111110", 
    264 => "0100111111", 265 => "0101000001", 266 => "0101000011", 267 => "0101000101", 
    268 => "0101000110", 269 => "0101000111", 270 => "0101001001", 271 => "0101001011", 
    272 => "0101001101", 273 => "0101001110", 274 => "0101001111", 275 => "0101010001", 
    276 => "0101010011", 277 => "0101010101", 278 => "0101010110", 279 => "0101010111", 
    280 => "0101011001", 281 => "0101011010", 282 => "0101011011", 283 => "0101011101", 
    284 => "0101011110", 285 => "0101011111", 286 => "0101100001", 287 => "0101100011", 
    288 => "0101100101", 289 => "0101100110", 290 => "0101100111", 291 => "0101101001", 
    292 => "0101101011", 293 => "0101101101", 294 => "0101101110", 295 => "0101101111", 
    296 => "0101110001", 297 => "0101110011", 298 => "0101110101", 299 => "0101110110", 
    300 => "0101110111", 301 => "0101111001", 302 => "0101111011", 303 => "0101111101", 
    304 => "0101111110", 305 => "0101111111", 306 => "0110000001", 307 => "0110000011", 
    308 => "0110000101", 309 => "0110000111", 310 => "0110001001", 311 => "0110001011", 
    312 => "0110001101", 313 => "0110001110", 314 => "0110001111", 315 => "0110010001", 
    316 => "0110010011", 317 => "0110010101", 318 => "0110010110", 319 => "0110010111", 
    320 => "0110011001", 321 => "0110011011", 322 => "0110011101", 323 => "0110011110", 
    324 => "0110011111", 325 => "0110100001", 326 => "0110100011", 327 => "0110100101", 
    328 => "0110100111", 329 => "0110101001", 330 => "0110101011", 331 => "0110101101", 
    332 => "0110101110", 333 => "0110101111", 334 => "0110110001", 335 => "0110110011", 
    336 => "0110110101", 337 => "0110110111", 338 => "0110111001", 339 => "0110111011", 
    340 => "0110111101", 341 => "0110111110", 342 => "0110111111", 343 => "0111000001", 
    344 => "0111000011", 345 => "0111000101", 346 => "0111000111", 347 => "0111001001", 
    348 => "0111001011", 349 => "0111001101", 350 => "0111001111", 351 => "0111010001", 
    352 => "0111010011", 353 => "0111010101", 354 => "0111010111", 355 => "0111011001", 
    356 => "0111011011", 357 => "0111011101", 358 => "0111011110", 359 => "0111011111", 
    360 => "0111100001", 361 => "0111100011", 362 => "0111100101", 363 => "0111100111", 
    364 => "0111101001", 365 => "0111101011", 366 => "0111101101", 367 => "0111101111", 
    368 => "0111110001", 369 => "0111110011", 370 => "0111110101", 371 => "0111110111", 
    372 => "0111111001", 373 => "0111111011", 374 => "0111111101", 375 => "0111111111", 
    376 => "1000000011", 377 => "1000000101", 378 => "1000000111", 379 => "1000001001", 
    380 => "1000001011", 381 => "1000001101", 382 => "1000001111", 383 => "1000010001", 
    384 => "1000010011", 385 => "1000010101", 386 => "1000010111", 387 => "1000011001", 
    388 => "1000011011", 389 => "1000011101", 390 => "1000011111", 391 => "1000100011", 
    392 => "1000100101", 393 => "1000100111", 394 => "1000101001", 395 => "1000101011", 
    396 => "1000101101", 397 => "1000101111", 398 => "1000110011", 399 => "1000110101", 
    400 => "1000110111", 401 => "1000111001", 402 => "1000111011", 403 => "1000111101", 
    404 => "1000111111", 405 => "1001000011", 406 => "1001000101", 407 => "1001000111", 
    408 => "1001001011", 409 => "1001001101", 410 => "1001001111", 411 => "1001010011", 
    412 => "1001010101", 413 => "1001010111", 414 => "1001011001", 415 => "1001011011", 
    416 => "1001011101", 417 => "1001011111", 418 => "1001100011", 419 => "1001100101", 
    420 => "1001100111", 421 => "1001101011", 422 => "1001101101", 423 => "1001101111", 
    424 => "1001110011", 425 => "1001110101", 426 => "1001110111", 427 => "1001111011", 
    428 => "1001111101", 429 => "1001111111", 430 => "1010000011", 431 => "1010000111", 
    432 => "1010001011", 433 => "1010001101", 434 => "1010001111", 435 => "1010010011", 
    436 => "1010010101", 437 => "1010010111", 438 => "1010011011", 439 => "1010011101", 
    440 => "1010011111", 441 => "1010100011", 442 => "1010100111", 443 => "1010101011", 
    444 => "1010101101", 445 => "1010101111", 446 => "1010110011", 447 => "1010110111", 
    448 => "1010111011", 449 => "1010111101", 450 => "1010111111", 451 => "1011000011", 
    452 => "1011000111", 453 => "1011001011", 454 => "1011001111", 455 => "1011010011", 
    456 => "1011010111", 457 => "1011011011", 458 => "1011011101", 459 => "1011011111", 
    460 => "1011100011", 461 => "1011100111", 462 => "1011101011", 463 => "1011101111", 
    464 => "1011110011", 465 => "1011110111", 466 => "1011111011", 467 => "1011111111", 
    468 => "1100000111", 469 => "1100001011", 470 => "1100001111", 471 => "1100010011", 
    472 => "1100010111", 473 => "1100011011", 474 => "1100011111", 475 => "1100100111", 
    476 => "1100101011", 477 => "1100101111", 478 => "1100110111", 479 => "1100111011", 
    480 => "1100111111", 481 => "1101000111", 482 => "1101001111", 483 => "1101010111", 
    484 => "1101011011", 485 => "1101011111", 486 => "1101100111", 487 => "1101101111", 
    488 => "1101110111", 489 => "1101111111", 490 => "1110001111", 491 => "1110010111", 
    492 => "1110011111", 493 => "1110101111", 494 => "1110111111", 495 => "1111011111" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;
