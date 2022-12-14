<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PersonController extends AbstractController
{
    #[Route('/person', name: 'app_person')]
    public function index(): Response
    {
        // TODO : add crud
        return $this->render('person/index.html.twig', [
            'controller_name' => 'PersonController',
        ]);
    }
}
