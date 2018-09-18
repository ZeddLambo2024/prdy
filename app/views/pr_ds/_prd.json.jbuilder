json.extract! prd, :id, :title, :targetReleaseVersion, :dateExpectedStartWork, :documentStatus, :documentOwner, :designerOwner, :developerOwner, :qaOwner, :goals, :backgroundStrategicFit, :assumptions, :requirements, :userInteractionNotes, :questions, :notDoing, :created_at, :updated_at
json.url prd_url(prd, format: :json)
