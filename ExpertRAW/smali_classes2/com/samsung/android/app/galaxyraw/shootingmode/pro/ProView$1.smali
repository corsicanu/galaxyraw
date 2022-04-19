.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;
.super Ljava/util/ArrayList;
.source "ProView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
