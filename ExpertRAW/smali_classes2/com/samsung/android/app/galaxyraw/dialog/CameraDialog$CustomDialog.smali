.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setNegativeButton$0$CameraDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

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

.method public synthetic lambda$setNegativeButton$1$CameraDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

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

.method public synthetic lambda$setPositiveButton$2$CameraDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

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

.method public synthetic lambda$setPositiveButton$3$CameraDialog$CustomDialog(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

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

.method public setDialogId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mDialogId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
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

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$gJ7nA49_RoPS-dr0BF7bTJrKrno;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$gJ7nA49_RoPS-dr0BF7bTJrKrno;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
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

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$lZLNiD0R-ST-spZ8uPCX-uJWkbw;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$lZLNiD0R-ST-spZ8uPCX-uJWkbw;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
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

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$8zaPW61BT_azq-JAmY61sTMycFQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$8zaPW61BT_azq-JAmY61sTMycFQ;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
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

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$yJ1iEX_NSn-x0rpzcng3mUuE1oE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$CustomDialog$yJ1iEX_NSn-x0rpzcng3mUuE1oE;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method
