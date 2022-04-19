.class public final synthetic Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hLtWs83trSUsSrZKFR6U8SB6vgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hLtWs83trSUsSrZKFR6U8SB6vgg;->f$0:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hLtWs83trSUsSrZKFR6U8SB6vgg;->f$0:Landroid/content/DialogInterface;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->lambda$onCreateView$0(Landroid/content/DialogInterface;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
