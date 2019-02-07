import React from "react";

const InputField = props => {
  return (
    <label>
      {props.label}
      <input
        name={props.name}
        type={props.type}
        value={props.content}
        onChange={props.onChange}
      />
    </label>
  );
};

export default InputField;
