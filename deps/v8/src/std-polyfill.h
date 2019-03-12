namespace std {
  template<typename T> std::string to_string(const T& value) {
    std::ostringstream sstr;
    sstr << value;
    return sstr.str();
  }
}
