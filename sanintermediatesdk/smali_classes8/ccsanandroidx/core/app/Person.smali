.class public Lccsanandroidx/core/app/Person;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/Person$Builder;
    }
.end annotation


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final IS_BOT_KEY:Ljava/lang/String; = "isBot"

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String; = "isImportant"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/Person$Builder;)V
    .locals 1
    .param p1, "builder"    # Lccsanandroidx/core/app/Person$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Lccsanandroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    .line 117
    iget-object v0, p1, Lccsanandroidx/core/app/Person$Builder;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Lccsanandroidx/core/app/Person;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 118
    iget-object v0, p1, Lccsanandroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/core/app/Person;->mUri:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lccsanandroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/core/app/Person;->mKey:Ljava/lang/String;

    .line 120
    iget-boolean v0, p1, Lccsanandroidx/core/app/Person$Builder;->mIsBot:Z

    iput-boolean v0, p0, Lccsanandroidx/core/app/Person;->mIsBot:Z

    .line 121
    iget-boolean v0, p1, Lccsanandroidx/core/app/Person$Builder;->mIsImportant:Z

    iput-boolean v0, p0, Lccsanandroidx/core/app/Person;->mIsImportant:Z

    .line 122
    return-void
.end method

.method public static fromAndroidPerson(Lccsanandroid/app/Person;)Lccsanandroidx/core/app/Person;
    .locals 2
    .param p0, "person"    # Lccsanandroid/app/Person;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "person"
        }
    .end annotation

    .line 88
    new-instance v0, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v0}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    .line 89
    invoke-virtual {p0}, Lccsanandroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lccsanandroid/app/Person;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lccsanandroid/app/Person;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setIcon(Lccsanandroidx/core/graphics/drawable/IconCompat;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lccsanandroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lccsanandroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lccsanandroid/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setBot(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lccsanandroid/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setImportant(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public static fromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/Person;
    .locals 3
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 48
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "iconBundle":Lccsanandroid/os/Bundle;
    new-instance v1, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v1}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    .line 50
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 51
    if-eqz v0, :cond_0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromBundle(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setIcon(Lccsanandroidx/core/graphics/drawable/IconCompat;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 53
    const-string v2, "key"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 54
    const-string v2, "isBot"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setBot(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 55
    const-string v2, "isImportant"

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/Person$Builder;->setImportant(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v1

    .line 49
    return-object v1
.end method

.method public static fromPersistableBundle(Lccsanandroid/os/PersistableBundle;)Lccsanandroidx/core/app/Person;
    .locals 2
    .param p0, "bundle"    # Lccsanandroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 70
    new-instance v0, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v0}, Lccsanandroidx/core/app/Person$Builder;-><init>()V

    .line 71
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "uri"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 73
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 74
    const-string v1, "isBot"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setBot(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 75
    const-string v1, "isImportant"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/Person$Builder;->setImportant(Z)Lccsanandroidx/core/app/Person$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lccsanandroidx/core/app/Person$Builder;->build()Lccsanandroidx/core/app/Person;

    move-result-object v0

    .line 70
    return-object v0
.end method


# virtual methods
.method public getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 197
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lccsanandroidx/core/app/Person;->mIsBot:Z

    return v0
.end method

.method public isImportant()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lccsanandroidx/core/app/Person;->mIsImportant:Z

    return v0
.end method

.method public resolveToLegacyUri()Ljava/lang/String;
    .locals 2

    .line 250
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public toAndroidPerson()Lccsanandroid/app/Person;
    .locals 2

    .line 175
    new-instance v0, Lccsanandroid/app/Person$Builder;

    invoke-direct {v0}, Lccsanandroid/app/Person$Builder;-><init>()V

    .line 176
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setUri(Ljava/lang/String;)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setKey(Ljava/lang/String;)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setBot(Z)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lccsanandroidx/core/app/Person;->isImportant()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Person$Builder;->setImportant(Z)Lccsanandroid/app/Person$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lccsanandroid/app/Person$Builder;->build()Lccsanandroid/app/Person;

    move-result-object v0

    .line 175
    return-object v0
.end method

.method public toBuilder()Lccsanandroidx/core/app/Person$Builder;
    .locals 1

    .line 163
    new-instance v0, Lccsanandroidx/core/app/Person$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/app/Person$Builder;-><init>(Lccsanandroidx/core/app/Person;)V

    return-object v0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 3

    .line 130
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "result":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mUri:Ljava/lang/String;

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v1, p0, Lccsanandroidx/core/app/Person;->mIsBot:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    iget-boolean v1, p0, Lccsanandroidx/core/app/Person;->mIsImportant:Z

    const-string v2, "isImportant"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-object v0
.end method

.method public toPersistableBundle()Lccsanandroid/os/PersistableBundle;
    .locals 3

    .line 151
    new-instance v0, Lccsanandroid/os/PersistableBundle;

    invoke-direct {v0}, Lccsanandroid/os/PersistableBundle;-><init>()V

    .line 152
    .local v0, "result":Lccsanandroid/os/PersistableBundle;
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mUri:Ljava/lang/String;

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lccsanandroidx/core/app/Person;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v1, p0, Lccsanandroidx/core/app/Person;->mIsBot:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-boolean v1, p0, Lccsanandroidx/core/app/Person;->mIsImportant:Z

    const-string v2, "isImportant"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    return-object v0
.end method
