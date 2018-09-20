class CreateDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :docs do |t|
      t.string :title
      t.string :targetReleaseVersion
      t.date :dateExpectedStartWork
      t.string :documentStatus
      t.string :documentOwner
      t.string :designerOwner
      t.string :developerOwner
      t.string :qaOwner
      t.text :goals
      t.text :backgroundStrategicFit
      t.text :assumptions
      t.text :requirements
      t.text :userInteractionNotes
      t.text :questions
      t.text :notDoing

      t.timestamps
    end
  end
end
