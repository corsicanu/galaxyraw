.class Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;
.super Landroid/app/AlertDialog$Builder;
.source "CameraSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setNegativeButton$0$CameraSettingDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public synthetic lambda$setNegativeButton$1$CameraSettingDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public synthetic lambda$setPositiveButton$2$CameraSettingDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public synthetic lambda$setPositiveButton$3$CameraSettingDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setDialogId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textId",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$4XMXdeoypAjlYTxpovNux7BmTLQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$4XMXdeoypAjlYTxpovNux7BmTLQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$Ul_BjT3SzmUSxMIRwSC0t-hAyyc;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$Ul_BjT3SzmUSxMIRwSC0t-hAyyc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textId",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$-K97yllG-ScAiSXaO0qyzNYwVis;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$-K97yllG-ScAiSXaO0qyzNYwVis;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$4MouXpXYPScJW8d2ZROs5tik2Jw;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$CustomDialog$4MouXpXYPScJW8d2ZROs5tik2Jw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method
