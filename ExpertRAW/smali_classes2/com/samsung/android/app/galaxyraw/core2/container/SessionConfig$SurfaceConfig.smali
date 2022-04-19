.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
.super Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfig"
.end annotation


# instance fields
.field protected final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "streamOption"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s, surface: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
