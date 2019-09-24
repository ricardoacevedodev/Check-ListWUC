class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :Unit
      t.string :Plataform
      t.boolean :PhotoRecived
      t.boolean :Scanning
      t.boolean :InitialSheetUpdate
      t.boolean :PerformanceTest
      t.boolean :FinalLogSheetUpdate
      t.boolean :QRD
      t.boolean :ABInternalControl
      t.boolean :TearDownFormat
      t.string :EWR

      t.timestamps
    end
  end
end
