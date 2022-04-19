.class Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;
.super Ljava/lang/Object;
.source "RecordingSessionController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation


# instance fields
.field mInfoDisplayName:Ljava/lang/String;

.field mInfoMimeType:Ljava/lang/String;

.field mLastContentData:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

.field mTempVideoFilename:Ljava/lang/String;

.field mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field mVideoFilenameWithPath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mLastContentData:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mLastContentData:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getTempFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mInfoMimeType:Ljava/lang/String;

    return-void
.end method

.method public setTempFilename(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFilename"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    return-void
.end method
