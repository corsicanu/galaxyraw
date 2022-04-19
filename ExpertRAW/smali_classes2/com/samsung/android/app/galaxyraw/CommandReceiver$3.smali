.class Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/CommandReceiver;->onLaunchDownload(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

.field final synthetic val$commandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CommandReceiver;Landroid/content/Intent;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intent",
            "val$commandId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->val$commandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 4

    const-string v0, "CommandReceiver"

    const-string v1, "onLaunchDownload : onDismissSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v1

    const v2, 0x7f12018f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchDownload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$3;->val$commandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " - Activity is not installed"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
