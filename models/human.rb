class Human

  def initialize value
    @name = value
  end

  def name
    @name
  end

  def legal_name
    first_name = @name.split.first
    last_name = @name.split.last

    last_name + ", " + first_name

    # @name.split(' ', 2).reverse.join(', ')
  end

  # attr_accessor :job_title
  def job_title=(value)
    @job_title = value
  end

  def job_title
    @job_title
  end

attr_accessor :age

  # def age=(value)
  #   @age = value
  # end
  #
  # def age
  #   @age
  # end

  def can_drink? (country = "Australia")
    @age >= AGES[country]
  end
end


AGES = {
  'Benin' => 0,
  'Bolivia' => 0,
  'Burkina Faso' => 0,
  'Burundi' => 0,
  'Cambodia' => 0,
  'Cameroon' => 0,
  'China' => 0,
  'Gabon' => 0,
  'Guinea-Bissau' => 0,
  'Indonesia' => 0,
  'Kosovo' => 0,
  'Laos' => 0,
  'Mali' => 0,
  'Rwanda' => 0,
  'Sao Tome and Principe' => 0,
  'Sierra Leone' => 0,
  'Solomon Islands' => 0,
  'Timor-Leste' => 0,
  'Togo' => 0,

  'Antigua and Barbuda' => 10,
  'Central African Republic' => 10,

  'Austria' => 16,
  'Belgium' => 16,
  'Congo' => 16,
  'Cyprus' => 16,
  'Denmark' => 16,
  'Dominica' => 16,
  'Germany' => 16,
  'Grenada' => 16,
  'Guyana' => 16,
  'Haiti' => 16,
  'Liechtenstein' => 16,
  'Luxembourg' => 16,
  'Malta' => 16,
  'Morocco' => 16,
  'Netherlands' => 16,
  'Portugal' => 16,
  'Saint Lucia' => 16,
  'Saint Vincent and the Grenadines' => 16,
  'San Marino' => 16,
  'Spain' => 16,
  'Switzerland' => 16,

  'Albania' => 18,
  'Algeria' => 18,
  'Andorra' => 18,
  'Angola' => 18,
  'Argentina' => 18,
  'Armenia' => 18,
  'Australia' => 18,
  'Azerbaijan' => 18,
  'Bahamas' => 18,
  'Barbados' => 18,
  'Belarus' => 18,
  'Belize' => 18,
  'Bhutan' => 18,
  'Bosnia and Herzegovina' => 18,
  'Botswana' => 18,
  'Brazil' => 18,
  'Bulgaria' => 18,
  'Canada' => 18,
  'Cape Verde' => 18,
  'Chad' => 18,
  'Chile' => 18,
  'Colombia' => 18,
  'Comoros' => 18,
  'Costa Rica' => 18,
  'Croatia' => 18,
  'Cuba' => 18,
  'Czech Republic' => 18,
  'Democratic Republic of the Congo' => 18,
  'Dominican Republic' => 18,
  'Ecuador' => 18,
  'Egypt' => 18,
  'El Salvador' => 18,
  'Eritrea' => 18,
  'Estonia' => 18,
  'Ethiopia' => 18,
  'Fiji' => 18,
  'Finland' => 18,
  'France' => 18,
  'Gambia' => 18,
  'Georgia' => 18,
  'Ghana' => 18,
  'Greece' => 18,
  'Guatemala' => 18,
  'Guinea' => 18,
  'Honduras' => 18,
  'Hungary' => 18,
  'India' => 18,
  'Ireland' => 18,
  'Israel' => 18,
  'Italy' => 18,
  'Jamaica' => 18,
  'Jordan' => 18,
  'Kazakhstan' => 18,
  'Kenya' => 18,
  'Kyrgyzstan' => 18,
  'Latvia' => 18,
  'Lesotho' => 18,
  'Liberia' => 18,
  'Lithuania' => 18,
  'Macedonia' => 18,
  'Madagascar' => 18,
  'Malawi' => 18,
  'Malaysia' => 18,
  'Mauritius' => 18,
  'Mexico' => 18,
  'Moldova' => 18,
  'Monaco' => 18,
  'Montenegro' => 18,
  'Mozambique' => 18,
  'Myanmar' => 18,
  'Namibia' => 18,
  'Nepal' => 18,
  'New Zealand' => 18,
  'Nicaragua' => 18,
  'Niger' => 18,
  'Nigeria' => 18,
  'Norway' => 18,
  'Panama' => 18,
  'Papua New Guinea' => 18,
  'Peru' => 18,
  'Philippines' => 18,
  'Poland' => 18,
  'Romania' => 18,
  'Russia' => 18,
  'Saint Kitts and Nevis' => 18,
  'Senegal' => 18,
  'Serbia' => 18,
  'Seychelles' => 18,
  'Singapore' => 18,
  'Slovakia' => 18,
  'Slovenia' => 18,
  'South Africa' => 18,
  'South Korea' => 18,
  'Suriname' => 18,
  'Swaziland' => 18,
  'Sweden' => 18,
  'Syria' => 18,
  'Tajikistan' => 18,
  'Tanzania' => 18,
  'Tonga' => 18,
  'Trinidad and Tobago' => 18,
  'Tunisia' => 18,
  'Turkey' => 18,
  'Turkmenistan' => 18,
  'Tuvalu' => 18,
  'Uganda' => 18,
  'Ukraine' => 18,
  'United Kingdom' => 18,
  'Uruguay' => 18,
  'Vanuatu' => 18,
  'Vatican City' => 18,
  'Venezuela' => 18,
  'Vietnam' => 18,
  'Zambia' => 18,
  'Zimbabwe' => 18,

  'Iceland' => 20,
  'Japan' => 20,
  'Paraguay' => 20,
  'Thailand' => 20,
  'Uzbekistan' => 20,

  'Côte d\'Ivoire' => 21,
  'Equatorial Guinea' => 21,
  'Iraq' => 21,
  'Kiribati' => 21,
  'Micronesia' => 21,
  'Mongolia' => 21,
  'Nauru' => 21,
  'Oman' => 21,
  'Palau' => 21,
  'Samoa' => 21,
  'Sri Lanka' => 21,
  'United States' => 21,

  'Afghanistan' => 999,
  'Bahrain' => 999,
  'Bangladesh' => 999,
  'Brunei Darussalam' => 999,
  'Iran' => 999,
  'Kuwait' => 999,
  'Libya' => 999,
  'Maldives' => 999,
  'Mauritania' => 999,
  'Pakistan' => 999,
  'Qatar' => 999,
  'Saudi Arabia' => 999,
  'Somalia' => 999,
  'Sudan' => 999,
  'United Arab Emirates' => 999,
  'Yemen' => 999
}
