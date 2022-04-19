.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;
.super Ljava/lang/Object;
.source "PlugInFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;,
        Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getCurrentFilterTab()I
.end method

.method public abstract getEffectProcessorMode()I
.end method

.method public abstract getFilterPreviewType()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
.end method

.method public abstract getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract loadPlugInFilters()V
.end method

.method public abstract saveOrder(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "currentFilterIdList",
            "previousFilterIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
