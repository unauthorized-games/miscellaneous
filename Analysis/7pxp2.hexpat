import nes;

fn formatNullTerminatedString(str string) {
    return "\"" + std::string::substr(string, 0, std::string::length(string)-1) + "\"";
};

struct ASCIIFFString {
    std::print(std::string(std::mem::read_unsigned($-1, 1) != 0xFF));
    char string[while(std::mem::read_unsigned($-1, 1) != 0xFF)] [[format("formatNullTerminatedString")]];
} [[inline]];

struct GameList {
    char start[2];
    ASCIIFFString names[while($<0x0703B7)];
};

GameList gameList @ 0x070304;