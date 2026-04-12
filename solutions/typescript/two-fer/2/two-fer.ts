/**
 * This stub is provided to make it straightforward to get started.
 */

export function twoFer(value?: string): string {
  let statement: string = "One for you, one for me.";

  if (value !== undefined) {
    statement = `One for ${value}, one for me.`
  }

  return statement;
}
