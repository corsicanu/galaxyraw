.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnKeyListener"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "keyCode",
            "event"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    const/16 v0, 0x52

    if-eq p2, v0, :cond_1

    const/16 v0, 0x54

    if-eq p2, v0, :cond_1

    :cond_0
    move p2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    move p2, v1

    :goto_0
    sget-object p3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return v1

    :cond_2
    return v2

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v1

    :pswitch_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return v1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
