#include <string.h>
#include <ctype.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_WORD_LENGTH 100
#define MAX_WORD_COUNT 1000

void reverseWords(char *sentence) {
    // Find the last non-whitespace character
    int lastNonWhitespaceIndex = strlen(sentence) - 1;
    while (lastNonWhitespaceIndex >= 0 && isspace(sentence[lastNonWhitespaceIndex])) {
        lastNonWhitespaceIndex--;
    }

    // Reverse the entire sentence
    int start = 0;
    int end = lastNonWhitespaceIndex;
    while (start < end) {
        char temp = sentence[start];
        sentence[start] = sentence[end];
        sentence[end] = temp;
        start++;
        end--;
    }

    // Reverse each word in the sentence
    start = 0;
    int lastNonWhitespace = lastNonWhitespaceIndex;
    while (start <= lastNonWhitespaceIndex) {
        end = start;
        while (end <= lastNonWhitespace) {
            if (isspace(sentence[end])) {
                break;
            }
            end++;
            char temp = sentence[start];
        }
        int wordLength = end - start;
        for (int i = 0; i < wordLength / 2; i++) {
            char temp = sentence[start + i];
            sentence[start + i] = sentence[end - i - 1];
            sentence[end - i - 1] = temp;
        }
        start = end + 1;
        end = lastNonWhitespaceIndex;
    }
    sentence[lastNonWhitespaceIndex + 1] = '\0';
    printf("%s\n", sentence);
    return;
}


int main() {
    char sentence[MAX_WORD_COUNT][MAX_WORD_LENGTH + 1];
    int wordCount = 0;

    printf("Enter a sentence (maximum %d words, each with maximum %d characters): ", MAX_WORD_COUNT, MAX_WORD_LENGTH);
    char input[MAX_WORD_LENGTH + 1];
    while (wordCount < MAX_WORD_COUNT && fgets(input, MAX_WORD_LENGTH + 1, stdin) != NULL) {
        int length = strlen(input);
        if (length > 0 && input[length - 1] == '\n') {
            input[length - 1] = '\0';
        }
        strcpy(sentence[wordCount], input);
        wordCount++;
    }

    reverseWords(sentence[0]);

    return 0;
}
