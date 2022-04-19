.class public final synthetic Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$jKTH3sYqmmAdUtNjYxiez3CQuYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$jKTH3sYqmmAdUtNjYxiez3CQuYU;->f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$2$jKTH3sYqmmAdUtNjYxiez3CQuYU;->f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;->lambda$new$24$CameraDialog$2(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
