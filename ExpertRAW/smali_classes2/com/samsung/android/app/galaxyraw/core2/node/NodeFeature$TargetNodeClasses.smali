.class public Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;
.super Ljava/lang/Object;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetNodeClasses"
.end annotation


# instance fields
.field public final alternative:Ljava/lang/Class;

.field public final primary:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryNode",
            "alternativeNode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;->primary:Ljava/lang/Class;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;->alternative:Ljava/lang/Class;

    return-void
.end method
