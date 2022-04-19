.class interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;
.super Ljava/lang/Object;
.source "BeautyFilterSettingMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BeautyFilterSettingObserver"
.end annotation


# virtual methods
.method public abstract onBeautyFilterDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isDim"
        }
    .end annotation
.end method

.method public abstract onBeautyFilterSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isSelected"
        }
    .end annotation
.end method
