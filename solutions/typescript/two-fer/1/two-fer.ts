/**
 * This stub is provided to make it straightforward to get started.
 */

export function twoFer(value?: string): string {
  let statement: string;

  if (value != undefined) {
    statement = `One for ${value}, one for me.`
  } else {
    statement = "One for you, one for me."
  }

  return statement;
}
