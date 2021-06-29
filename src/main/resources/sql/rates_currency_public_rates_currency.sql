create table rates_currency
(
    date             date   not null,
    base_currency_id bigint not null
        constraint rates_currency_currency_id_fk
            references currency
            on update cascade on delete cascade,
    currency_to_id   bigint not null
        constraint rates_currency_currency_id_fk_2
            references currency
            on update cascade on delete cascade,
    rate             double precision,
    constraint rates_currency_pk
        primary key (date, currency_to_id)
);

alter table rates_currency
    owner to postgres;

create unique index rates_currency_date_currency_to_id_uindex
    on rates_currency (date, currency_to_id);

INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 1, 54.70349884033203);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 2, 42.48249816894531);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 3, 100.33419799804688);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 4, 6.914194583892822);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 5, 28.568300247192383);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 6, 44.018798828125);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 7, 14.625699996948242);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 8, 4.076125621795654);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 9, 0.10754572600126266);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 10, 11.578800201416016);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 11, 72.17769622802734);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 12, 86.16570281982422);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 13, 1.0280735492706299);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 14, 5.907861232757568);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 15, 58.6619987487793);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 16, 1.1733218431472778);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 17, 11.178600311279297);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 18, 0.249176487326622);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 19, 0.11792702972888947);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 20, 19.097700119018555);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 21, 17.475200653076172);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 22, 103.13690185546875);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 23, 53.715599060058594);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 24, 0.15801283717155457);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 25, 0.12133242934942245);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 26, 20.65169906616211);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 27, 146.52723693847656);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 28, 0.3786487579345703);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 29, 0.2960612177848816);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 30, 0.11741995811462402);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 31, 78.54789733886719);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 32, 0.1977245807647705);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 33, 15.66445541381836);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-29', 35, 34, 1.5337847471237183);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 1, 54.83430099487305);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 2, 42.47760009765625);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 3, 100.36599731445312);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 4, 7.037594795227051);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 5, 28.552499771118164);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 6, 44.062198638916016);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 7, 14.684399604797363);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 8, 4.073336124420166);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 9, 0.10754977911710739);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 10, 11.590499877929688);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 11, 72.16940307617188);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 12, 86.19190216064453);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 13, 1.0279974937438965);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 14, 5.925574779510498);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 15, 58.6505012512207);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 16, 1.173484444618225);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 17, 11.1806001663208);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 18, 0.24982886016368866);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 19, 0.11756919324398041);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 20, 19.119699478149414);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 21, 17.492599487304688);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 22, 103.12069702148438);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 23, 53.79750061035156);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 24, 0.15803106129169464);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 25, 0.12045405805110931);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 26, 20.64929962158203);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 27, 146.39125061035156);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 28, 0.3798627257347107);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 29, 0.29519423842430115);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 30, 0.11730865389108658);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 31, 78.6759033203125);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 32, 0.19617460668087006);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 33, 15.626073837280273);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-26', 35, 34, 1.534446120262146);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 1, 54.83760070800781);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 2, 42.569698333740234);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 3, 101.1333999633789);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 4, 7.079195022583008);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 5, 28.57270050048828);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 6, 44.14970016479492);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 7, 14.562800407409668);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 8, 4.049091339111328);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 9, 0.10735557228326797);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 10, 11.611900329589844);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 11, 72.32599639892578);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 12, 86.32830047607422);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 13, 1.026020884513855);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 14, 5.92863130569458);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 15, 58.8494987487793);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 16, 1.1707448959350586);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 17, 11.173299789428711);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 18, 0.24908027052879333);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 19, 0.1175331249833107);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 20, 19.081899642944336);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 21, 17.533599853515625);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 22, 103.3219985961914);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 23, 53.805999755859375);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 24, 0.1576889157295227);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 25, 0.1199001893401146);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 26, 20.69409942626953);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 27, 146.16976928710938);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 28, 0.3787362277507782);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 29, 0.2939464747905731);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 30, 0.11707271635532379);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 31, 78.70929718017578);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 32, 0.19722776114940643);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 33, 15.660063743591309);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-25', 35, 34, 1.532712697982788);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 1, 54.958099365234375);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 2, 42.77050018310547);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 3, 101.52320098876953);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 4, 7.060301780700684);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 5, 28.662099838256836);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 6, 44.36600112915039);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 7, 14.653900146484375);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 8, 4.031737804412842);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 9, 0.10686546564102173);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 10, 11.669099807739258);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 11, 72.66709899902344);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 12, 86.71369934082031);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 13, 1.0215767621994019);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 14, 5.882249355316162);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 15, 59.11259841918945);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 16, 1.1640983819961548);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 17, 11.213399887084961);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 18, 0.24770499765872955);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 19, 0.11696220934391022);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 20, 19.20330047607422);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 21, 17.614099502563477);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 22, 103.658203125);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 23, 53.9995002746582);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 24, 0.15694867074489594);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 25, 0.11866309493780136);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 26, 20.79170036315918);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 27, 145.61424255371094);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 28, 0.37505295872688293);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 29, 0.2932276129722595);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 30, 0.11656723916530609);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 31, 79.17530059814453);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 32, 0.1950264275074005);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 33, 15.63851261138916);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-24', 35, 34, 1.525862693786621);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 1, 54.85260009765625);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 2, 43.06420135498047);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 3, 101.45939636230469);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 4, 7.076389312744141);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 5, 28.837299346923828);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 6, 44.49409866333008);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 7, 14.590900421142578);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 8, 4.066974639892578);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 9, 0.10613660514354706);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 10, 11.703200340270996);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 11, 73.16609954833984);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 12, 87.06770324707031);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 13, 1.0141648054122925);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 14, 5.837337017059326);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 15, 59.0525016784668);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 16, 1.1555389165878296);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 17, 11.302399635314941);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 18, 0.24603332579135895);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 19, 0.11770882457494736);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 20, 19.178499221801758);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 21, 17.667800903320312);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 22, 104.41609954833984);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 23, 54.301700592041016);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 24, 0.15587808191776276);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 25, 0.11967978626489639);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 26, 20.934499740600586);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 27, 144.69602966308594);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 28, 0.3727824091911316);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 29, 0.29386526346206665);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 30, 0.11690382659435272);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 31, 79.51969909667969);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 32, 0.19605113565921783);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 33, 15.519009590148926);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-23', 35, 34, 1.5097850561141968);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 1, 54.855098724365234);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 2, 43.08340072631836);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 3, 101.27040100097656);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 4, 7.071835517883301);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 5, 28.9414005279541);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 6, 44.47880172729492);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 7, 14.378899574279785);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 8, 4.07958459854126);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 9, 0.10607704520225525);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 10, 11.699299812316895);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 11, 73.19869995117188);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 12, 86.89420318603516);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 13, 1.0128120183944702);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 14, 5.847030162811279);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 15, 58.73749923706055);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 16, 1.155751347541809);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 17, 11.312999725341797);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 18, 0.245906263589859);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 19, 0.11847204715013504);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 20, 19.124900817871094);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 21, 17.657800674438477);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 22, 104.5811996459961);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 23, 54.394500732421875);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 24, 0.15580886602401733);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 25, 0.11989142745733261);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 26, 20.94379997253418);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 27, 144.36868286132812);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 28, 0.3725643754005432);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 29, 0.294076144695282);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 30, 0.11758950352668762);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 31, 79.40840148925781);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 32, 0.19636951386928558);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 33, 15.48886775970459);
INSERT INTO public.rates_currency (date, base_currency_id, currency_to_id, rate) VALUES ('2021-06-22', 35, 34, 1.5029637813568115);