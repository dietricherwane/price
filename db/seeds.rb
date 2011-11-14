# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Civilite.create([{ :title => 'M.' }, { :title => 'Mme.' }])

Sexe.create([{ :title => 'M' }, { :title => 'F' }])

Region.create([{ :name => 'Agn&eacute;by' }, { :name => 'Bafing' }, { :name => 'Bas-Sassandra' }, { :name => 'Dengu&eacute;l&eacute;' }, { :name => 'Dix-Huit Montagnes' }, { :name => 'Fromager' }, { :name => 'Haut-Sassandra' }, { :name => 'Lacs' }, { :name => 'Lagunes' }, { :name => 'Marahou&eacute;' }, { :name => 'Moyen-Cavally' }, { :name => 'Moyen-Como&eacute;' }, { :name => "N'zi-Como&eacute;" }, { :name => 'Savanes' }, { :name => 'Sud-Bandama' }, { :name => 'Sud-Como&eacute;' }, { :name => 'Vall&eacute;e du Bandama' }, { :name => 'Worodougou' }, { :name => 'Zanzan' }])

City.create([{ :name => 'Abidjan' }, { :name => 'Aboisso' }])

Contract.create([{ :title => 'CDI' }, { :title => 'CDD' }, { :title => 'Stage' }])

Diploma.create([{ :title => 'BTS' }, { :title => 'License' }, { :title => 'Ing&eacute;nieur' } , { :title => 'Doctorat' }, { :title => '+' }])

Domain.create([{ :title => 'Fonction publique, Administration' }, { :title => 'Banques, Finance, Assurances' }, { :title => 'Commercial' } , { :title => 'Communication, Marketing' }, { :title => 'Compta, Gestion' }, { :title => 'Design, Infographie, DAO' }, { :title => 'Informatique, Internet, Telecoms' }, { :title => 'Industrie, Technique' }, { :title => 'Management, Direction' }, { :title => 'Construction, BTP, Immobilier' }, { :title => 'Sant&eacute; , Social' }, { :title => 'Secr&eacute;tariat, Assistanat' }, { :title => 'Stage, Int&eacute;rim' }, { :title => 'Tourisme, Restauration, Hotellerie' }, { :title => 'Transport, Manutention, Logistique' }, { :title => 'Humanitaire, B&eacute;n&eacute;volat' }, { :title => 'ONG, Organisation, Programme' }, { :title => 'Personnel de surface, S&eacute;curit&eacute;, Logistique' }, { :title => 'Juridique, droit' }])

Marital.create([{ :status => 'Mari&eacute;(e)' }, { :status => 'Divorc&eacute;(e)' }, { :status => 'C&eacute;libataire' } , { :status => 'Veuf(ve)' }])
