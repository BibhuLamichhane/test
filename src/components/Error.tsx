// src/components/Error.tsx
import React from 'react';
import styles from '../styles/app.module.css';  // Importing the styles

interface ErrorProps {
  message: string;
}

const Error: React.FC<ErrorProps> = ({ message }) => {
  return <p className={styles.error}>{message}</p>;
};

export default Error;
