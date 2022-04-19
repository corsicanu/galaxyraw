.class Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/CameraResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolutionMapTag"
.end annotation


# instance fields
.field mBackResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

.field mFrontResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backResolutionMapTag",
            "frontResolutionMapTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->mBackResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->mFrontResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    return-void
.end method


# virtual methods
.method public getBackResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->mBackResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    return-object p0
.end method

.method public getFrontResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->mFrontResolutionMapTag:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    return-object p0
.end method
