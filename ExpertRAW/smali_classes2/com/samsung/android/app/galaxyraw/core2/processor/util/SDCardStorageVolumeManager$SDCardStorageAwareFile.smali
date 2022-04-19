.class public Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;
.super Ljava/lang/Object;
.source "SDCardStorageVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardStorageAwareFile"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final isSDCardStorageFile:Z

.field public final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->path:Ljava/nio/file/Path;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->access$000(Ljava/nio/file/Path;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->isSDCardStorageFile:Z

    return-void
.end method
