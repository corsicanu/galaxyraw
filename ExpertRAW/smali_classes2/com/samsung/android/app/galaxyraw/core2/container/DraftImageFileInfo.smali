.class public Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;
.super Ljava/lang/Object;
.source "DraftImageFileInfo.java"


# instance fields
.field public final core2Uri:Landroid/net/Uri;

.field public final fakeDraftImageFilePath:Ljava/nio/file/Path;

.field public final realDraftImageFilePath:Ljava/nio/file/Path;

.field public final replacedUri:Landroid/net/Uri;

.field public final resultImageFilePath:Ljava/nio/file/Path;

.field public final secMPUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "replacedUri",
            "core2Uri",
            "secMPUri",
            "realDraftImageFilePath",
            "fakeDraftImageFilePath",
            "resultImageFilePath"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->replacedUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->core2Uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->resultImageFilePath:Ljava/nio/file/Path;

    return-void
.end method
