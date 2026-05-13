import 'dart:io';
void main() {
stdout.writeln('This is normal output'); // goes to stdout
stderr.writeln('This is an error message'); // goes to stderr
}
// In the terminal, both appear the same visually,
// but they are different streams underneath.