.class Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "v",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected() called with: key="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->access$000(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", position="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpinnerPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->access$100(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->notifyDependencyChange(Z)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
