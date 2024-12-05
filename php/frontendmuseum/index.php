<?php include 'header_inc.php'; ?>
<main>
    <?php
    include 'classes.php';
    $db = new DB();
    $exhibits = $db->executeAll('SELECT * FROM exhibits');

    foreach ($exhibits as $exhibit) :
    ?>
        <article>
            <h2><?= $exhibit['title'] ?></h2>
            <p><?= $exhibit['description'] ?></p>
            <img src="gallery/<?= $exhibit['image'] ?>"
                fetchpriority="high" decoding="sync">
        </article>
    <?php endforeach; ?>
</main>
<?php include 'footer_inc.php'; ?>