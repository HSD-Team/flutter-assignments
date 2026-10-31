double average({required double midterm, required double finalExam}) => midterm * 0.4 + finalExam * 0.6;


String letterGrade(double avg) =>
    switch(avg) {
      >= 90 => 'AA',
      >= 85 => 'BA',
      >= 80 => 'BB',
      >= 75 => 'CB',
      >= 70 => 'CC',
      >= 65 => 'DC',
      >= 60 => 'DD',
      >= 50 => 'FD',
      _ => 'FF',

    };

bool isPassing(double avg) => avg >= 60;



void main(){
  print('Not hesaplayıcı');
  final avg = average(midterm: 70, finalExam: 85);
  print(avg);

  print(letterGrade(avg));
  print(letterGrade(92));
  print(letterGrade(42));

  print(isPassing(avg));
  print(isPassing(55));


}