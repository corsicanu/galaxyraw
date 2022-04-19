.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;
.super Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewSurfaceConfig"
.end annotation


# instance fields
.field private final mSurfaceSize:Landroid/util/Size;

.field private final mSurfaceSource:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Surface;Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "streamOption",
            "surfaceSize",
            "surfaceSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;-><init>(Landroid/view/Surface;Ljava/lang/Integer;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSize:Landroid/util/Size;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSource:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSurfaceSource()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSource:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSize:Landroid/util/Size;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->mSurfaceSource:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s, size: %s, source: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
