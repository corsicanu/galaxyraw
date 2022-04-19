.class public interface abstract Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;
.super Ljava/lang/Object;
.source "ProControlPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlPanelEventListener"
.end annotation


# virtual methods
.method public abstract onControlPanelItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation
.end method

.method public abstract onResetButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method
