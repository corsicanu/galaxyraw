.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$ecdGHy9Nbgl98IUl_SSCXqFXf_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Landroid/util/Range;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$ecdGHy9Nbgl98IUl_SSCXqFXf_s;->f$0:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$ecdGHy9Nbgl98IUl_SSCXqFXf_s;->f$0:Landroid/util/Range;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->lambda$setFpsRange$7(Landroid/util/Range;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
