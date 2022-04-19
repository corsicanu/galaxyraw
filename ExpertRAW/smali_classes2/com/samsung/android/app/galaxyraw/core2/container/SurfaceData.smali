.class public Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;
.super Ljava/lang/Object;
.source "SurfaceData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData$SurfaceUsageType;
    }
.end annotation


# static fields
.field public static final SURFACE_USAGE_TYPE_DUMMY:I = 0x1

.field public static final SURFACE_USAGE_TYPE_NORMAL:I


# instance fields
.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceUsageType:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;-><init>(Landroid/view/Surface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "surfaceUsageType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurface:Landroid/view/Surface;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurfaceUsageType:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurface:Landroid/view/Surface;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurfaceUsageType:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurfaceUsageType()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceUsageType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurfaceUsageType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceData{Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->mSurfaceUsageType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
