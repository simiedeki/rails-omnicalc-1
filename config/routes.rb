

Rails.application.routes.draw do
    root 'application#squarenew'
    get '/', to: redirect('/square/new')
    get '/square/new', to: 'application#squarenew'
    get '/square/results', to: 'application#squareresults'
    get '/payment/new', to: 'application#paymentnew'
    get '/payment/results', to: 'application#paymentresults'
    get '/random/new', to: 'application#randomnew'
    get '/random/results', to: 'application#randomresults'
    get '/square_root/new', to: 'application#squarerootnew'
    get '/square_root/results', to: 'application#squarerootresults'
end
