.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnalyzeStorageClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraDialog"

    const-string p1, "OnAnalyzeStorageClickListener - Activity is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
