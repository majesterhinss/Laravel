<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Type de formation</title>
        <link rel="stylesheet" href={{ asset('css/bootstrap.css') }}>
        <link rel="stylesheet" href={{ asset('css/bootstrap.min.css') }}>
        <link rel="stylesheet" href={{ asset('css/style.css') }}>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>


                   <div class="container">
                    <p>Formations en {{ $referenciel['libelleReferentiel'] }}</p>

                <div class="row">
                    @foreach ($referenciel->formations as $formation)
                        <div>
                            <p>{{ $formation['nomFormation'] }}</p>
                            <br>
                            <p>Durée: {{ $formation['duree'] }} ans</p>
                            <br>
                            <p>Description :{{ $formation['description'] }}</p>
                            <br>
                            <a href="/formations/{{ $formation['id'] }}" class="btn btn-secondary" style="width:200px;">S'inscrire à cette formation</a>
                        </div>
                    @endforeach
                </div>

    </body>
    <script src="/js/sc.js"></script>
</html>
