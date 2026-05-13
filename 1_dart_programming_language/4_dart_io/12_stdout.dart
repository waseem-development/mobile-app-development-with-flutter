import 'dart:io';
void main() {
// print() — each call adds a newline
print('One'); // prints: One\n
print('Two'); // prints: Two\n
// Terminal shows:
// One
// Two
print('--- separator ---');
// stdout.write() — NO automatic newline
stdout.write('One'); // prints: One (cursor stays here)
stdout.write('Two'); // prints: Two (cursor stays here)
stdout.write('\n'); // NOW move to next line
// Terminal shows:
// OneTwo

print('Hello, World!');
stdout.writeln('Hello, World!');
stdout.write('Hello, World!\n');
// stdout.writeln with empty line:
stdout.writeln(); // just a blank line
print(''); // same thing
}