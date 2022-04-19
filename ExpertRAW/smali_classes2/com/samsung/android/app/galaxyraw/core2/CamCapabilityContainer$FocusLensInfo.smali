.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;
.super Ljava/lang/Object;
.source "CamCapabilityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusLensInfo"
.end annotation


# instance fields
.field maxLensPos:Ljava/lang/Integer;

.field minLensPos:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minLensPos",
            "maxLensPos"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->minLensPos:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->maxLensPos:Ljava/lang/Integer;

    return-void
.end method

.method public static unMarshal([I)Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusInfo"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public getMaxLensPos()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->maxLensPos:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMinLensPos()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$FocusLensInfo;->minLensPos:Ljava/lang/Integer;

    return-object p0
.end method
