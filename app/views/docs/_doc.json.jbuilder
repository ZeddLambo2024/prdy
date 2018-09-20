json.extract! doc, :id, :title, :targetReleaseVersion, :dateExpectedStartWork, :documentStatus, :documentOwner, :designerOwner, :developerOwner, :qaOwner, :goals, :backgroundStrategicFit, :assumptions, :requirements, :userInteractionNotes, :questions, :notDoing, :created_at, :updated_at
json.url doc_url(doc, format: :json)
