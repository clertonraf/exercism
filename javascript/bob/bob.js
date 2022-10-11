const isUpperCase = (message) =>
  message.toUpperCase() === message &&
  message.replaceAll(/[A-Za-z]/g, "") !== message;

const isQuestion = (message) => message.trim().endsWith("?");

const isEmpty = (message) => message.trim() === "";

export const hey = (message) => {
  if (isEmpty(message)) return "Fine. Be that way!";
  if (isQuestion(message) && isUpperCase(message))
    return "Calm down, I know what I'm doing!";
  if (isQuestion(message)) return "Sure.";
  if (isUpperCase(message)) return "Whoa, chill out!";
  return "Whatever.";
};
