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
    final names = ['Ayşe','Mehmet','Zeynep','Can','Elif'];
    final midterms = [72.0,45.0,90.0,60.0,85.0];
    final finals = [88.0,60.0,95.0,40.0,70.0];


    for (var i = 0 ; i < names.length; i++){
      final avg= average(midterm: midterms[i], finalExam: finals[i]);
      
      final status = isPassing(avg) ? 'Geçti' : 'Kaldı' ;
      
        print('${names[i]}: ${avg.toStringAsFixed(2)} ${letterGrade(avg)} $status');
          
          
    }

}