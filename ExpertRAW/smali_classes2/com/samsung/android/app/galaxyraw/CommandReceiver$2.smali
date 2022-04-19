.class Lcom/samsung/android/app/galaxyraw/CommandReceiver$2;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "CommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/CommandReceiver;->onLaunchCreateMyFilter()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    const-string v0, "CommandReceiver"

    const-string v1, "onLaunchCreateMyFilter : onDismissSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->access$100(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)Z

    return-void
.end method
