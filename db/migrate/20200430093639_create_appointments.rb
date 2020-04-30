class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.time :date
      t.belongs_to :doctor, index: true #cette ligne rajoute la référence à la table doctors
      t.belongs_to :patient, index: true #cette ligne rajoute la référence à la table doctors
      t.timestamps
    end
  end
end

#Cette ligne dit à ta BDD "crée une colonne qui va servir à stocker un integer, celui-ci sera la référence (l'id) du doctor qui est lié au rdv". Maintenant, tu n'as plus qu'à passer tes 2 migrations : $ rails db:migrate.