.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;
.super Ljava/lang/Object;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingFileInfo"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTempFileName()Ljava/lang/String;
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayName"
        }
    .end annotation
.end method

.method public abstract setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation
.end method

.method public abstract setFileName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setTempFilename(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFilename"
        }
    .end annotation
.end method
