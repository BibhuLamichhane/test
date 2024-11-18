// src/components/Table.tsx
import React from 'react';
import styles from '../styles/app.module.css';  // Importing the styles

interface TableProps {
    data: any[];
}

const Table: React.FC<TableProps> = ({ data }) => {
    if (data.length === 0) {
        return <p>No data available</p>;
    }

    return (
        <table className={styles.table}>
            <thead>
                <tr>
                    {Object.keys(data[0]).map((key) => (
                        <th key={key}>{key}</th>
                    ))}
                </tr>
            </thead>
            <tbody>
                {data.map((row, index) => (
                    <tr key={index}>
                        {Object.values(row).map((value, index) => (
                            <td key={index}>{value}</td>
                        ))}
                    </tr>
                ))}
            </tbody>
        </table>
    );
};

export default Table;
