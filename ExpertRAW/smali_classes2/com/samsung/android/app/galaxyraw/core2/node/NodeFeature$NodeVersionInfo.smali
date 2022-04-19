.class public Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;
.super Ljava/lang/Object;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeVersionInfo"
.end annotation


# instance fields
.field public final majorVersion:I

.field public final minorVersion:I

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vendor",
            "majorVersion",
            "minorVersion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;->vendor:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;->majorVersion:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;->minorVersion:I

    return-void
.end method
