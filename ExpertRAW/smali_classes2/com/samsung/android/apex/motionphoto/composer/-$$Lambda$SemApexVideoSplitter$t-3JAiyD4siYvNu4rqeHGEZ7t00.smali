.class public final synthetic Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$t-3JAiyD4siYvNu4rqeHGEZ7t00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

.field public final synthetic f$1:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$t-3JAiyD4siYvNu4rqeHGEZ7t00;->f$0:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$t-3JAiyD4siYvNu4rqeHGEZ7t00;->f$1:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final invoke(I)J
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$t-3JAiyD4siYvNu4rqeHGEZ7t00;->f$0:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$t-3JAiyD4siYvNu4rqeHGEZ7t00;->f$1:Ljava/io/FileDescriptor;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->lambda$split$1$SemApexVideoSplitter(Ljava/io/FileDescriptor;I)J

    move-result-wide p0

    return-wide p0
.end method
