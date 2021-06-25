// Race on A[i] and A[i+1]

int main() {
  const int N = 1000;
  int A[N][N];

#pragma omp parallel for
  for (int i = 0; i < N - 1; i++) {
    for (int j = 0; j < N; j++) {
      A[i][j] = A[i + 1][j] + 1;
    }
  }
}