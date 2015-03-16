class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :certification_name
      t.string :certification_type
      t.string :certification_provider
      t.date :certification_issued
      t.date :certification_expiry
      t.string :certification_description
      t.references :user, index: true

      t.timestamps
    end
  end
end
