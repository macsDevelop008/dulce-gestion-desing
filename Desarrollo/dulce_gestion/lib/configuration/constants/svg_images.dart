class SvgImages {
  //! Retorna svg en formato string
  //! [hexBaseColor] color de la "d"
  //! [hexDecorationColor] color de la decoración en la "d"
  static String logoColor(
      {required String hexBaseColor, required String hexDecorationColor}) {
    return '''
      <svg xmlns="http://www.w3.org/2000/svg" width="793.701" height="1122.52" xmlns:v="https://vecta.io/nano"><defs><clipPath id="A"><path d="M113.281 53.779h97.416v142.281h-97.416zm48.57 69.088a23.294 24.803 0 0 0-23.293 24.803 23.294 24.803 0 0 0 23.293 24.803 23.294 24.803 0 0 0 14.686-5.605l9.477 2.539-4.699-8.139a23.294 24.803 0 0 0 3.832-13.598 23.294 24.803 0 0 0-23.295-24.803z" opacity=".72" fill="#000" stroke-width="1.506"/></clipPath></defs><path d="M182.25 58.779v50.975c-6.716-4.672-14.557-7.161-22.57-7.164-10.98 0-21.51 4.661-29.274 12.957s-12.125 19.548-12.125 31.28c0 24.43 18.535 44.234 41.398 44.234 8.019-.007 15.863-2.503 22.58-7.184l23.438 6.279V59.02z" clip-path="url(#A)" transform="matrix(8.276544 0 0 8.276544 -950.56032 -466.05274)" fill="$hexBaseColor"/><path d="M494.444 912.326l46.981-58.824 49.525 85.224z" fill="$hexDecorationColor"/></svg>
    ''';
  }

  static String curveBackground({
    required String baseColor,
  }) {
    return '''
      <svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" fill="none" xmlns:v="https://vecta.io/nano"><path fill="$baseColor" d="M127.14 200c-27.146 0-27.146-32.577-54.291-32.577-31.244 0-72.849-9.037-72.849-40.29 0-27.144 32.568-27.144 32.568-54.288C32.568 41.613 41.605 0 72.86 0c27.146 0 27.146 32.577 54.291 32.577 31.233 0 72.849 9.037 72.849 40.29 0 27.145-32.579 27.145-32.579 54.289-.012 31.288-9.037 72.844-40.281 72.844Z"/></svg>
    ''';
  }
}
