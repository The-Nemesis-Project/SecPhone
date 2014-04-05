.class public Lcom/android/phone/sip/SipProfileDb;
.super Ljava/lang/Object;
.source "SipProfileDb.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProfilesCount:I

.field private mProfilesDirectory:Ljava/lang/String;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 67
    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, child:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 84
    :cond_1
    return-void
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .locals 8
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 160
    .local v0, atomicFile:Lcom/android/internal/os/AtomicFile;
    const/4 v2, 0x0

    .line 162
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .local v4, p:Landroid/net/sip/SipProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    move-object v2, v3

    .line 170
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #p:Landroid/net/sip/SipProfile;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v4

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deserialize a profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 170
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v5

    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 165
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private deserializeCipher(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .locals 13
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 176
    .local v0, atomicFile:Lcom/android/internal/os/AtomicFile;
    const/4 v6, 0x0

    .line 177
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 178
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 179
    .local v3, cis:Ljavax/crypto/CipherInputStream;
    const/4 v7, 0x0

    .line 181
    .local v7, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 183
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljavax/crypto/CipherInputStream;

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/phone/sip/SipProfileDb;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v10

    invoke-direct {v4, v2, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .end local v3           #cis:Ljavax/crypto/CipherInputStream;
    .local v4, cis:Ljavax/crypto/CipherInputStream;
    :try_start_2
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .local v8, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/sip/SipProfile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    .local v9, p:Landroid/net/sip/SipProfile;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v3       #cis:Ljavax/crypto/CipherInputStream;
    move-object v1, v2

    .line 193
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #p:Landroid/net/sip/SipProfile;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :goto_0
    return-object v9

    .line 188
    :catch_0
    move-exception v5

    .line 189
    .local v5, e:Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_4
    sget-object v10, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialize a profile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 193
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 191
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v10

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v3       #cis:Ljavax/crypto/CipherInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #cis:Ljavax/crypto/CipherInputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v10

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v3       #cis:Ljavax/crypto/CipherInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 188
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v3       #cis:Ljavax/crypto/CipherInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #cis:Ljavax/crypto/CipherInputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #cis:Ljavax/crypto/CipherInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v5

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4           #cis:Ljavax/crypto/CipherInputStream;
    .restart local v3       #cis:Ljavax/crypto/CipherInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private getCipher(I)Ljavax/crypto/Cipher;
    .locals 2
    .parameter "cipherMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 252
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 253
    return-object v0
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    const-string v4, "bobitacihopicnti"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 244
    .local v1, key:[B
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 245
    .local v0, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 246
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 247
    .local v3, secretKey:Ljavax/crypto/SecretKey;
    return-object v3
.end method

.method private retrieveSipProfileListInternal()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 132
    .local v10, sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v9, Ljava/io/File;

    iget-object v11, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v9, root:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, dirs:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 155
    :goto_0
    return-object v10

    .line 135
    :cond_0
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v2, v0, v5

    .line 136
    .local v2, dir:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v12, ".pobj"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v8, profileObjFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v12, ".cpobj"

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v1, cipherProfileObjFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 135
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const/4 v7, 0x0

    .line 141
    .local v7, p:Landroid/net/sip/SipProfile;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 142
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipProfileDb;->deserializeCipher(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v7

    .line 146
    :cond_3
    :goto_3
    if-eqz v7, :cond_1

    .line 147
    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 148
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    const-string v12, "retrieveProfileListFromStorage()"

    invoke-static {v11, v12, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 143
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 144
    invoke-direct {p0, v8}, Lcom/android/phone/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_3

    .line 153
    .end local v1           #cipherProfileObjFile:Ljava/io/File;
    .end local v2           #dir:Ljava/lang/String;
    .end local v7           #p:Landroid/net/sip/SipProfile;
    .end local v8           #profileObjFile:Ljava/io/File;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    iput v11, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 154
    iget-object v11, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v12, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v11, v12}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    goto :goto_0
.end method

.method private updateCipherProfile(Ljava/io/File;Landroid/net/sip/SipProfile;)Z
    .locals 12
    .parameter "profileObjDir"
    .parameter "sipProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v10, 0x1

    .line 217
    .local v10, updated:Z
    new-instance v2, Ljava/io/File;

    const-string v11, ".cpobj"

    invoke-direct {v2, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v2, cipherProfileObjFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 219
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 220
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 221
    .local v3, cos:Ljavax/crypto/CipherOutputStream;
    const/4 v8, 0x0

    .line 224
    .local v8, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/phone/sip/SipProfileDb;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v11

    invoke-direct {v4, v1, v11}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    .end local v3           #cos:Ljavax/crypto/CipherOutputStream;
    .local v4, cos:Ljavax/crypto/CipherOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 228
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .local v9, oos:Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {v9, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 236
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V

    .line 237
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 239
    :cond_1
    return v10

    .line 231
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v5

    .line 233
    .local v5, e:Ljava/io/IOException;
    :goto_0
    const/4 v10, 0x0

    .line 234
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 237
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v11

    .line 236
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v3       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v11

    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v3       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 231
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v3       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #cos:Ljavax/crypto/CipherOutputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v5

    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4           #cos:Ljavax/crypto/CipherOutputStream;
    .restart local v3       #cos:Ljavax/crypto/CipherOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter

    .prologue
    .line 70
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 72
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v0, v2}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProfilesCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->getProfilesCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    goto :goto_0
.end method

.method public retrieveSipProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveProfile(Landroid/net/sip/SipProfile;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    const-class v4, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v4

    .line 88
    :try_start_0
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 89
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, ".cpobj"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipProfileDb;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 102
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 105
    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v0, v2}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 112
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 114
    :cond_3
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    return-void

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 109
    :goto_0
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 112
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 111
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public updateCipherProfiles()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 197
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 198
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 200
    if-nez v3, :cond_0

    monitor-exit v1

    .line 211
    :goto_0
    return v0

    .line 201
    :cond_0
    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 202
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    new-instance v5, Ljava/io/File;

    const-string v7, ".pobj"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 201
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/phone/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v7

    .line 206
    if-eqz v7, :cond_1

    .line 207
    invoke-direct {p0, v6, v7}, Lcom/android/phone/sip/SipProfileDb;->updateCipherProfile(Ljava/io/File;Landroid/net/sip/SipProfile;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method
