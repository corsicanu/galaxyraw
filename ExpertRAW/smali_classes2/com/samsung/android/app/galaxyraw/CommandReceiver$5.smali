.class Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/CommandReceiver;->startAREmojiActivity()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CommandReceiver;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$intent"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 3

    const-string v0, "CommandReceiver"

    const-string v1, "startAREmojiActivity : onDismissSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$5;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    const v1, 0x7f010002

    const v2, 0x7f010003

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "startAREmojiActivity : Activity is not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
